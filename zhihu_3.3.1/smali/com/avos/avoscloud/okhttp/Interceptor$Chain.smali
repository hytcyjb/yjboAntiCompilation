.class public interface abstract Lcom/avos/avoscloud/okhttp/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract connection()Lcom/avos/avoscloud/okhttp/Connection;
.end method

.method public abstract proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;
.end method

.method public abstract request()Lcom/avos/avoscloud/okhttp/Request;
.end method
