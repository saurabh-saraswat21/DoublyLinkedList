package Definition;

import Adt.DoublyListAdt;

public class MyDoublyList<E> implements DoublyListAdt<E> {
    int size =0;
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
    private boolean addFirst(E item)
    {
        return true;
    }
}
