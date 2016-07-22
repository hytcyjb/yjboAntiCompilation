.class public final enum Lcom/didi/frame/business/Business;
.super Ljava/lang/Enum;
.source "Business.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/business/Business;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/business/Business;

.field public static final enum Activity:Lcom/didi/frame/business/Business;

.field public static final enum Beatles:Lcom/didi/frame/business/Business;

.field public static final enum Car:Lcom/didi/frame/business/Business;

.field public static final enum DDrive:Lcom/didi/frame/business/Business;

.field public static final enum Flier:Lcom/didi/frame/business/Business;

.field public static final enum Taxi:Lcom/didi/frame/business/Business;

.field public static final enum Topic:Lcom/didi/frame/business/Business;


# instance fields
.field private iconResId:I

.field private key:Ljava/lang/String;

.field private productId:I

.field private textResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const v10, 0x7f020136

    .line 15
    new-instance v0, Lcom/didi/frame/business/Business;

    const-string v1, "Beatles"

    sget-object v3, Lcom/didi/frame/protobuffer/Product;->ProductCarPool:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v3

    const-string v4, "TXc9PQ=="

    const v5, 0x7f0b0006

    const v6, 0x7f020082

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    .line 16
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "Flier"

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TkE9PQ=="

    const v8, 0x7f0b0246

    const v9, 0x7f020137

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    .line 17
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "Taxi"

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TVE9PQ=="

    const v8, 0x7f0b024a

    const v9, 0x7f020138

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    .line 18
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "Car"

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TWc9PQ=="

    const v8, 0x7f0b0242

    move v5, v13

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    .line 19
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "DDrive"

    const/4 v5, 0x4

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductNone:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TlE9PQ=="

    const v8, 0x7f0b0245

    const v9, 0x7f02019b

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    .line 20
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "Activity"

    const/4 v5, 0x5

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductNone:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TVRFPQ=="

    const v8, 0x7f0b0240

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    .line 21
    new-instance v3, Lcom/didi/frame/business/Business;

    const-string v4, "Topic"

    const/4 v5, 0x6

    sget-object v0, Lcom/didi/frame/protobuffer/Product;->ProductNone:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v6

    const-string v7, "TVRJPQ=="

    const v8, 0x7f0b024c

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/didi/frame/business/Business;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v3, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    aput-object v1, v0, v11

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    aput-object v1, v0, v12

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/frame/business/Business;->$VALUES:[Lcom/didi/frame/business/Business;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "productId"
    .parameter "key"
    .parameter "textResId"
    .parameter "iconResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/didi/frame/business/Business;->productId:I

    .line 30
    iput-object p4, p0, Lcom/didi/frame/business/Business;->key:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/didi/frame/business/Business;->textResId:I

    .line 32
    iput p6, p0, Lcom/didi/frame/business/Business;->iconResId:I

    .line 33
    return-void
.end method

.method public static getBusiness(I)Lcom/didi/frame/business/Business;
    .locals 2
    .parameter "index"

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/frame/business/Business;->values()[Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 89
    .local v0, typeArray:[Lcom/didi/frame/business/Business;
    array-length v1, v0

    if-le p0, v1, :cond_0

    .line 90
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    .line 92
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static getBusiness(Ljava/lang/String;)Lcom/didi/frame/business/Business;
    .locals 3
    .parameter "key"

    .prologue
    .line 96
    invoke-static {}, Lcom/didi/frame/business/Business;->values()[Lcom/didi/frame/business/Business;

    move-result-object v1

    .line 97
    .local v1, typeArray:[Lcom/didi/frame/business/Business;
    const/4 v0, 0x0

    .line 98
    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 99
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    aget-object v2, v1, v0

    .line 103
    :goto_1
    return-object v2

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getBusinessByProduct(I)Lcom/didi/frame/business/Business;
    .locals 3
    .parameter "productId"

    .prologue
    .line 107
    invoke-static {}, Lcom/didi/frame/business/Business;->values()[Lcom/didi/frame/business/Business;

    move-result-object v1

    .line 108
    .local v1, typeArray:[Lcom/didi/frame/business/Business;
    const/4 v0, 0x0

    .line 109
    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 110
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->getProductId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 111
    aget-object v2, v1, v0

    .line 114
    :goto_1
    return-object v2

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/business/Business;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/didi/frame/business/Business;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/didi/frame/business/Business;->$VALUES:[Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, [Lcom/didi/frame/business/Business;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/business/Business;

    return-object v0
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/frame/business/Business;->iconResId:I

    return v0
.end method

.method public getIconResUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getActivityIcon()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 44
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTopicIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getIndex(Lcom/didi/frame/business/Business;)I
    .locals 3
    .parameter "t"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, i:I
    invoke-static {}, Lcom/didi/frame/business/Business;->values()[Lcom/didi/frame/business/Business;

    move-result-object v1

    .line 80
    .local v1, typeArray:[Lcom/didi/frame/business/Business;
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 81
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 84
    :cond_0
    return v0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p0}, Lcom/didi/frame/business/Business;->getIndex(Lcom/didi/frame/business/Business;)I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/frame/business/Business;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/didi/frame/business/Business;->productId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getActivityString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFlierName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 67
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTopicName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    iget v0, p0, Lcom/didi/frame/business/Business;->textResId:I

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextResId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/didi/frame/business/Business;->textResId:I

    return v0
.end method

.method public isMinorOf(Lcom/didi/frame/business/Business;)Z
    .locals 2
    .parameter "t"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
