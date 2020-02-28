package Definition;

import Adt.DoublyListAdt;

public class MyDoublyList<E> implements DoublyListAdt<E> {
    int size =0;
    private Node<E> head=null;
    private Node<E> tail = null;
    @Override
    public boolean add(E item) {
        return false;
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
    }
}
