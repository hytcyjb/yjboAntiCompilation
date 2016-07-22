.class public Lcom/zhihu/android/app/util/d;
.super Ljava/lang/Object;
.source "BusProvider.java"


# static fields
.field private static final a:Lcom/squareup/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/squareup/b/b;

    sget-object v1, Lcom/squareup/b/i;->b:Lcom/squareup/b/i;

    invoke-direct {v0, v1}, Lcom/squareup/b/b;-><init>(Lcom/squareup/b/i;)V

    sput-object v0, Lcom/zhihu/android/app/util/d;->a:Lcom/squareup/b/b;

    return-void
.end method

.method public static a()Lcom/squareup/b/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/zhihu/android/app/util/d;->a:Lcom/squareup/b/b;

    return-object v0
.end method
