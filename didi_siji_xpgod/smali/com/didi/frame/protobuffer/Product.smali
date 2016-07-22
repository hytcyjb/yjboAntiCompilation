.class public final enum Lcom/didi/frame/protobuffer/Product;
.super Ljava/lang/Enum;
.source "Product.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/Product;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProdcutWali:Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProductCarPool:Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProductFast:Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProductNone:Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProductPrivate:Lcom/didi/frame/protobuffer/Product;

.field public static final enum ProductTaxi:Lcom/didi/frame/protobuffer/Product;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProductNone"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProductNone:Lcom/didi/frame/protobuffer/Product;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProductTaxi"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v5, v2}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProductPrivate"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v6, v2}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    .line 24
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProductCarPool"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v7, v2}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProductCarPool:Lcom/didi/frame/protobuffer/Product;

    .line 28
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProductFast"

    const/16 v2, 0x104

    invoke-direct {v0, v1, v8, v2}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    .line 32
    new-instance v0, Lcom/didi/frame/protobuffer/Product;

    const-string v1, "ProdcutWali"

    const/4 v2, 0x5

    const/16 v3, 0x105

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->ProdcutWali:Lcom/didi/frame/protobuffer/Product;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/didi/frame/protobuffer/Product;

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductNone:Lcom/didi/frame/protobuffer/Product;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductCarPool:Lcom/didi/frame/protobuffer/Product;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/frame/protobuffer/Product;->ProdcutWali:Lcom/didi/frame/protobuffer/Product;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/frame/protobuffer/Product;->$VALUES:[Lcom/didi/frame/protobuffer/Product;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/didi/frame/protobuffer/Product;->value:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Product;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/Product;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/Product;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/Product;->$VALUES:[Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/Product;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/didi/frame/protobuffer/Product;->value:I

    return v0
.end method
