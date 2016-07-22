.class public Lcom/didi/car/helper/CarDynamicPriceHelper;
.super Ljava/lang/Object;
.source "CarDynamicPriceHelper.java"


# static fields
.field public static final TAG_ID_ADD_PRICE:I = 0x1

.field private static final TAG_ID_COMMON_TIP:I = 0x0

.field private static final TAG_ID_COUPONS:I = 0x3

.field private static final TAG_ID_DISCOUNT:I = 0x4

.field private static final TAG_ID_MINUS_PRICE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResIdByTagId(I)I
    .locals 1
    .parameter "tagId"

    .prologue
    .line 22
    const v0, 0x7f0201cd

    .line 23
    .local v0, resId:I
    packed-switch p0, :pswitch_data_0

    .line 37
    :goto_0
    return v0

    .line 25
    :pswitch_0
    const v0, 0x7f0201cc

    .line 26
    goto :goto_0

    .line 28
    :pswitch_1
    const v0, 0x7f0201d0

    .line 29
    goto :goto_0

    .line 31
    :pswitch_2
    const v0, 0x7f0201ce

    .line 32
    goto :goto_0

    .line 34
    :pswitch_3
    const v0, 0x7f0201cf

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
