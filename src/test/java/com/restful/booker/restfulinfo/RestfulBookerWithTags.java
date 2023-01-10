package com.restful.booker.restfulinfo;

import com.restful.booker.testbase.TestBase;
import net.serenitybdd.junit.runners.SerenityRunner;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Title;
import net.thucydides.core.annotations.WithTag;
import net.thucydides.core.annotations.WithTags;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(SerenityRunner.class)
public class RestfulBookerWithTags extends TestBase {

    @WithTag("restfulbooker:NEGATIVE")
    @Title("This method will get error code 404 when a method is use ")
    @Test
    public void invalidMethod() {
        SerenityRest.rest()
                .given().log().all()
                .when()
                .patch()
                .then()
                .statusCode(404).log().all();
    }

    @WithTags({@WithTag("restfulbooker:NEGATIVE"),
            @WithTag("restfulbooker:SMOKE")})
    @Title("This test will provide an error code 403 ")
    @Test
    public void authenticationMissing() {
        SerenityRest.rest().
                given().log().all()
                .when().delete("/id")
                .then().log().all().statusCode(403);
    }

    @WithTags({@WithTag("restfulbooker:POSITIVE"),
            @WithTag("restfulbooker:SMOKE")})
    @Title("This test will return a correct response code 200 ")
    @Test
    public void verifingStatusCodeIsCorrect() {
        SerenityRest.given()
                .when()
                .get()
                .then().log().all().statusCode(200);
    }
}
