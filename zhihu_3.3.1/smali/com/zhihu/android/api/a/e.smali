.class public Lcom/zhihu/android/api/a/e;
.super Ljava/lang/Object;
.source "SystemParametersRequestInitializer.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zhihu/android/api/a/e;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    return-void
.end method
