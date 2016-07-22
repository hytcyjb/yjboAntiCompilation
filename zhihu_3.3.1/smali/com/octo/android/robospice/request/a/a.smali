.class public abstract Lcom/octo/android/robospice/request/a/a;
.super Lcom/octo/android/robospice/request/g;
.source "GoogleHttpClientSpiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Lcom/octo/android/robospice/request/g",
        "<TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/api/client/http/HttpRequestFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/octo/android/robospice/request/g;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/HttpRequestFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/octo/android/robospice/request/a/a;->a:Lcom/google/api/client/http/HttpRequestFactory;

    .line 16
    return-void
.end method

.method public e()Lcom/google/api/client/http/HttpRequestFactory;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/octo/android/robospice/request/a/a;->a:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method
