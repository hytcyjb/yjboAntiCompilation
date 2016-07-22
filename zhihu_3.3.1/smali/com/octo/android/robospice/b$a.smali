.class public final Lcom/octo/android/robospice/b$a;
.super Ljava/lang/Object;
.source "SpiceService.java"

# interfaces
.implements Lcom/octo/android/robospice/request/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octo/android/robospice/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/octo/android/robospice/b;


# direct methods
.method protected constructor <init>(Lcom/octo/android/robospice/b;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/octo/android/robospice/b$a;->a:Lcom/octo/android/robospice/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/octo/android/robospice/b$a;->a:Lcom/octo/android/robospice/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octo/android/robospice/b;->a(Lcom/octo/android/robospice/b;I)I

    .line 466
    iget-object v0, p0, Lcom/octo/android/robospice/b$a;->a:Lcom/octo/android/robospice/b;

    invoke-static {v0}, Lcom/octo/android/robospice/b;->a(Lcom/octo/android/robospice/b;)V

    .line 467
    return-void
.end method
