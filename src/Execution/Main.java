package Execution;

import Definition.MyDoublyList;

public class Main {
    public static void main(String[] args) {
        MyDoublyList<Integer> list = new MyDoublyList<>();
        for (int i = 0; i < 10; i++) {

            list.add(i);
        }
        System.out.println(list);

        list.removeFirst();

        System.out.println(list);

    }


}
