.class final Lcom/squareup/wire/EnumAdapter$1;
.super Ljava/lang/Object;
.source "EnumAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/EnumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/squareup/wire/ProtoEnum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/ProtoEnum;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    invoke-interface {p2}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/EnumAdapter$1;->compare(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    return v0
.end method
