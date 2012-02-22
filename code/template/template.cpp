#include <iostream>
#include <set>
#include <string>
#include <fstream>
using namespace std;

template<class T, int incr = 10>
class PStash {
    int quantity;
    int next;
    T** storage;
    void inflate(int increase = incr);
public:
    PStash() : quantity(0), next(0), storage(0) {}
    ~PStash();
    int add(T* element);
    T* operator[](int index) const;
    T* remove(int index);
    int count() const {return next;}
};

template<class T, int incr>
int PStash<T, incr>::add(T* element) {
    if (next >= quantity) {
	inflate(incr);
    }
    storage[next++] = element;
    return (next - 1);
}

template<class T, int incr>
T* PStash<T, incr>::remove(int index) {
    T* v = operator[](index);
    if (v != 0) storage[index] = 0;
    return v;
}

template<class T, int incr>
PStash<T, incr>::~PStash() {
    for (int i = 0; i < next; i++) {
	delete storage[i];
	storage[i] = 0;
    }
    delete[] storage;
}

template<class T, int incr>
T* PStash<T, incr>::operator[](int index) const {
    if (index >= next) {
	return 0;
    }
    return storage[index];
}

template<class T, int incr>
void PStash<T, incr>::inflate(int increase) {
    const int psz = sizeof(T*);
    T** st = new T*[quantity + increase];
    memset(st, 0, (quantity + increase) * psz);
    memcpy(st, storage, quantity * psz);
    quantity += increase;
    delete[] storage;
    storage = st;
}

class AutoCounter {
    static int count;
    int id;
    class CleanupCheck {
	std::set<AutoCounter*> trace;
    public:
	void add(AutoCounter* ap) {
	    trace.insert(ap);
	}
	void remove(AutoCounter* ap) {
	    trace.erase(ap);
	}
	~CleanupCheck() {
	    std::cout << "~CleanupCheck()"<< trace.size() << std::endl;
	}
    };
    static CleanupCheck verifier;
    AutoCounter() : id(count++) {
	verifier.add(this);
	std::cout << "created[" << id <<"]" << std::endl;
    }
    AutoCounter(const AutoCounter&);
    void operator=(const AutoCounter&);
public:
    static AutoCounter* create() {
	return new AutoCounter();
    }
    ~AutoCounter() {
	std::cout << "destroying[" << id << "]" << std::endl;
	verifier.remove(this);
    }
    friend std::ostream& operator<<(std::ostream& os, const AutoCounter& ac){
	return os << "AutoCounter " << ac.id;
    }
    friend std::ostream& operator<<(std::ostream& os, const AutoCounter* ac) {
	return os << "AutoCounter " << ac->id;
    }
};

template<class T> class Stack {
    struct Link {
	T* data;
	Link* next;
	Link(T* dat, Link* nxt)
	    : data(dat), next(nxt) {	}
    }* head;
    bool own;
public:
    Stack(bool own = true) : head(0), own(own) {}
    ~Stack();
    void push(T* dat) {
	head = new Link(dat, head);
    }
    T* peek() const {
	return head ? head->data : 0;
    }
    T* pop();
    bool owns() const {return own;}
    void owns(bool newownership) {
	own = newownership;
    }
    operator bool() const {return head != 0;}
};

template<class T> T* Stack<T>::pop() {
    if (head == 0) return 0;
    T* result = head->data;
    Link* oldHead = head;
    head = head->next;
    delete oldHead;
    return result;
}

template<class T> Stack<T>::~Stack() {
    if (!own) return;
    while(head)
	delete pop();
}

AutoCounter::CleanupCheck AutoCounter::verifier;
int AutoCounter::count = 0;

int main() {
    Stack<AutoCounter> ac;
    Stack<AutoCounter> ac2(false);
    AutoCounter* ap;

    for (int i = 0; i < 10; i++) {
	ap = AutoCounter::create();
	if (i % 2 == 0)
	    ac2.push(ap);
    }
    while (ac2)
	cout << ac2.pop() << endl;

}
