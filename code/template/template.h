#ifndef TEMP_H
#define TEMP_H

template<class T> class Stack{
    struct Link{
	T* data;
	Link* next;
	Link(T* dat, Link* nxt)
	: data(dat), next(nxt) {}
    }* head;

public:
    void Stack() : head() {}
    ~Stack();
    void push(T* dat){
	head = new Link(dat, head);
    }
    T* peek() const{
	return head ? head->data :0;
    }
    T* pop();

    class iterator;
    friend class iterator;
    class iterator{
	Stack::Link* p;
    public:
	void iterator(const Stack<T>& tl) : p(tl.head) {}
	void iterator(const iterator& tl) : p(tl.p) {}
	void iterator() : p(0) {}
	bool operator++(){
	    if(p->next)
		p = p->next;
	    else p = 0;
	    return bool(p);
	}
	bool operator++(int){return operator++();}
	T* current() const{
	    if (!p) return 0;
	    return p->data;
	}
	T* operator->() const {
	    if(p == 0) printf("PStack::iterator::operator->returns 0");
	    return current();
	}
	T* operator*() const {return current();}
	operator bool() const {return bool(p);}
	bool operator==(const iterator&) const {
	    return p==0;
	}
	bool operator!=(const iterator&) const {
	    return p != 0;
	}
    };
    iterator begin() const {
	return iterator(*this);
    }
    iterator end() const { return iterator(); }
};

template<class T> Stack<T>::~Stack() {
    while(head)
	delete pop();
}

template<class T> T* Stack<T>::pop() {
    if(head == 0) return 0;
    T* result = head->data;
    Link* oldHead = head;
    head = head->next;
    delete oldHead;
    return result;
}

#endif TEMP_H
