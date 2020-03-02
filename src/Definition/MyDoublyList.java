package Definition;

import Adt.DoublyListAdt;

public class MyDoublyList<E> implements DoublyListAdt<E> {
    int size = 0;
    private Node<E> head = null;
    private Node<E> tail = null;

    @Override
    public boolean add(E item) {
        add(item, size);
        return true;
    }

    @Override
    public E remove() {
        return null;
    }

    @Override
    public void sort() {

    }

    @Override
    public int search() {
        return 0;
    }

    private boolean addFirst(E item) {
        if (head == null) {
            Node<E> newNode = new Node<>(item, null, null);
            head = newNode;
            tail = newNode;
            size++;
        } else {
            Node<E> newNode = new Node<>(item, null, head);
            head.previous = newNode;
            head = newNode;
            size++;

        }
        return true;
    }

    private boolean addAfter(E item, Node<E> afterNode) {
        Node<E> nextNode = afterNode.getNext();
        if (nextNode == null) {
            Node<E> newNode = new Node<>(item, afterNode, null);
            afterNode.next = newNode;
            tail = newNode;
            size++;
        } else {
            Node<E> newNode = new Node<>(item, afterNode, nextNode);
            afterNode.next = newNode;
            nextNode.previous = newNode;
            size++;
        }
        return true;
    }

    public Node<E> getNode(int index) {
        Node<E> response = head;
        for (int i = 0; i < index && response != null; i++) {
            response = response.getNext();
        }
        //System.out.println("response="+response.getData());
        return response;
    }

    public boolean add(E item, int index) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException(index);
        } else if (index == 0) {
            addFirst(item);
        } else {
            addAfter(item, getNode(index - 1));
        }
        return true;
    }

    public Node<E> removeFirst() {
        Node<E> response = head;
        if (head != null) {
            head.getNext().previous = null;
            head = head.getNext();
            size--;
        } else {
            System.out.println("List is empty");
        }
        return response;
    }

    public Node<E> removeAfter(Node<E> afterNode) {
        Node<E> response = afterNode.next;
        if (response != null) {
            afterNode.next = response.getNext();
            afterNode.getNext().previous = afterNode;
            System.out.println(afterNode.getNext());
            System.out.println("afterNode.next.data=  " + afterNode.getNext().getData());
            System.out.println("3rd node.next=  " + getNode(3).getNext() + "    5rth node.previous:- " + getNode(4).getPrevious());
            size--;
        }

        return response;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("[");
        Node<E> currentNode = head;
        for (int i = 0; i < size && currentNode != null; i++) {
            E data = currentNode.getData();
            sb.append(data);
            sb.append(i < size - 1 ? ", " : "");
            currentNode = currentNode.getNext();
        }
        sb.append("]");
        return sb.toString();
    }

    private static class Node<E> {
        private E data;
        private Node<E> previous;
        private Node<E> next;

        private Node(E data, Node<E> previous, Node<E> next) {
            this.data = data;
            this.previous = previous;
            this.next = next;
        }

        private E getData() {
            return data;
        }

        private Node<E> getPrevious() {
            return previous;
        }

        private Node<E> getNext() {
            return next;
        }

        @Override
        public String toString() {
            return this.getData().toString();
        }
    }
}
