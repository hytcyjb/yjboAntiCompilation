.class Lcom/squareup/wire/MessageAdapter$ImmutableList;
.super Ljava/util/AbstractList;
.source "MessageAdapter.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 766
    .local p0, this:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/wire/MessageAdapter$ImmutableList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 772
    .local p0, this:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<TT;>;"
    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, this:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 776
    .local p0, this:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
