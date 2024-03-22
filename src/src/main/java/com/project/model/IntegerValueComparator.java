package com.project.model;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Map;

public class IntegerValueComparator implements Comparator<String>{

	 Map<String, Integer> base;

	    public IntegerValueComparator (Map<String, Integer> base) {
	        this.base = base;
	    }

	    @Override
	    public int compare(String a, String b) {
	        // Confronta i valori in ordine decrescente
	        if (base.get(a) >= base.get(b)) {
	            return -1;
	        } else {
	            return 1;
	        }
	    }
	}

