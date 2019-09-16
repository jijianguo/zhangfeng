package com.bgs.cocktailparty;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication
@MapperScan("com.bgs.cockailparty.dao")
public class CocktailpartyApplication {

    public static void main(String[] args) {
        SpringApplication.run(CocktailpartyApplication.class, args);
    }

}
