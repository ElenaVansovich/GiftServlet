package sweets;

import comparators.SweetPriceComparator;
import comparators.SweetSugarComparator;
import comparators.SweetWeightComparator;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Elena on 10.10.2016.
 */
public class Gift {

    private List<Sweet> gift;

    private int size;

    public Gift(){
        this.gift = new ArrayList<Sweet>();
        this.size = 0;
    }

    /**
     * @param size
     */
    public Gift(int size){
        this.size = size;
        this.gift = new ArrayList<Sweet>(size);
    }

    /**
     * @return
     */
    public String toString(){
        String str = "";
        for(Sweet sweet : this.gift){
            str += sweet.toString()+"\n";
        }
        return str;
    }

    /**Adding sweet to gift
     * @param sweet
     */
    public void add(Sweet sweet){
        this.gift.add(sweet);
        this.size++;
    }

    /**Removing sweet from gift
     * @param sweet
     */
    public void remove(Sweet sweet){
        this.gift.remove(sweet);
        this.size--;
    }

    /**
     * @return gift
     */
    public List<Sweet> getGift() {
        return this.gift;
    }

    /**
     * @param gift
     */
    public void setGift(List<Sweet> gift) {
        this.gift = gift;
    }

    /**
     * @return
     */
    public int getSize() {
        return size;
    }

    /**
     * @param size
     */
    public void setSize(int size) {
        this.size = size;
    }

    /**Sorting sweets in gift by amount of sugar
     * @return sorted gift
     */
    public List<Sweet> sortBySugar() {
        SweetSugarComparator sweetSugarComparator = new SweetSugarComparator();
        this.gift.sort(sweetSugarComparator);
        return this.gift;
    }

    /**Sorting sweets in gift by price
     * @return sorted gift
     */
    public List<Sweet> sortByPrice() {
        SweetPriceComparator sweetPriceComparator = new SweetPriceComparator();
        this.gift.sort(sweetPriceComparator);
        return this.gift;
    }

    /**Sorting sweets in gift by weight
     * @return sorted gift
     */
    public List<Sweet> sortByWeight() {
        SweetWeightComparator sweetWeightComparator = new SweetWeightComparator();
        this.gift.sort(sweetWeightComparator);
        return this.gift;
    }


    /**Searching sweets with parameters in gift
     * @param price
     * @param sugar
     * @param weight
     * @return list of sweets
     */
    public List<Sweet> searchSweet(double price, double sugar, double weight){
        List<Sweet> sweetList = new LinkedList<Sweet>();
        for(Sweet sweet: this.gift){
            if(sweet.getPrice() <= price && sweet.getSugar() <= sugar &&
                    sweet.getWeight() <= weight){
                sweetList.add(sweet);
            }
        }
        return sweetList;
    }

    /**Count weight of gift
     * @return weight
     */
    public double totalWeight() {
        double weight = 0;
        for (Sweet sweet : this.gift) {
            weight += sweet.getWeight();
        }
        return weight;
    }

}
