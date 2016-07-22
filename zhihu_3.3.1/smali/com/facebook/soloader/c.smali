.class public final Lcom/facebook/soloader/c;
.super Lcom/facebook/soloader/h;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/c$1;,
        Lcom/facebook/soloader/c$b;,
        Lcom/facebook/soloader/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/h$e;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/soloader/c$a;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/c$a;-><init>(Lcom/facebook/soloader/c;)V

    return-object v0
.end method
