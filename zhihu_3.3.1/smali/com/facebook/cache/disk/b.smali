.class public Lcom/facebook/cache/disk/b;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/disk/h;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/cache/disk/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/b$1;-><init>(Lcom/facebook/cache/disk/b;)V

    return-object v0
.end method
