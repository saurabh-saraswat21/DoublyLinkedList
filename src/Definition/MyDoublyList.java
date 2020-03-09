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
        Node<E> response = remove(size - 1);
        return response.getData();

    }

    @Override
    public void sort() {
        for (int i = 1; i < size; i++) {
            Node<E> node1 = getNode(i - 1);
            Node<E> node2 = getNode(i);
            if (node1.compareTo(node2) > 0) {
                if (i == 1) {
                    node1.next = node2.next;
                    node1.previous = node2;
                    node2.getNext().previous = node1;
                    node2.next = node1;
                    node2.previous = null;
                    head = node2;
                } else if (i == size - 1) {
                    node2.next = node1;
                    node2.previous = node1.previous;
                    node1.next = null;
                    node1.getPrevious().next = node2;
                    node1.previous = node2;
                    tail = node1;
                } else {
                }
            }
        }
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

    private Node<E> getNode(int index) {
        Node<E> response = head;
        for (int i = 0; i < index && response != null; i++) {
            response = response.getNext();
        }
        return response;
    }

    private boolean add(E item, int index) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException(index);
        } else if (index == 0) {
            addFirst(item);
        } else {
            addAfter(item, getNode(index - 1));
        }
        return true;
    }

    private Node<E> removeFirst() {
        Node<E> response = head;
        if (head != null) {
            head = head.getNext();
            head.previous = null;
            size--;
        }
        return response;
    }

    private Node<E> removeAfter(Node<E> afterNode) {
        Node<E> response = afterNode.next;
        Node<E> nextNode = response.getNext();
        if (nextNode != null) {
            nextNode.previous = afterNode;
            afterNode.next = nextNode;
            size--;
        } else {
            afterNode.next = nextNode;
            tail = afterNode;
            size--;
        }

        return response;
    }

    public Node<E> remove(int index) {
        Node<E> response;
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException(index);
        } else if (index == 0) {
            response = removeFirst();
        } else {
            response = removeAfter(getNode(index - 1));
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

    public String toStringt() {
        final StringBuilder sb = new StringBuilder("[");
        Node<E> currentNode = tail;
        for (int i = 0; i < size && currentNode != null; i++) {
            E data = currentNode.getData();
            sb.append(data);
            sb.append(i < size - 1 ? ", " : "");
            currentNode = currentNode.getPrevious();
        }
        sb.append("]");
        return sb.toString();
    }

    private static class Node<E> implements Comparable<Node<E>> {
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

        @Override
        public int compareTo(Node<E> node1) {
            String data1 = this.getData().toString();
            Integer data01 = Integer.parseInt(data1);
            String data2 = node1.getData().toString();
            Integer data02 = Integer.parseInt(data2);
            return data01.compareTo(data02);
        }
    }
}
