package Execution;

import Definition.MyDoublyList;

public class Main {
    public static void main(String[] args) {
        MyDoublyList<Integer> list = new MyDoublyList<>();
        for (int i = 10; i > 0; i--) {

            list.add(i);
        }
        System.out.println(list);
        list.sort();
        System.out.println(list);
        System.out.println(list.toStringt());
    }


}
