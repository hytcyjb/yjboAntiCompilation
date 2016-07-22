.class public Lcom/octo/android/robospice/b$b;
.super Landroid/os/Binder;
.source "SpiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octo/android/robospice/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/octo/android/robospice/b;


# direct methods
.method public constructor <init>(Lcom/octo/android/robospice/b;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/octo/android/robospice/b$b;->a:Lcom/octo/android/robospice/b;

    .line 475
    return-void
.end method


# virtual methods
.method public a()Lcom/octo/android/robospice/b;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/octo/android/robospice/b$b;->a:Lcom/octo/android/robospice/b;

    return-object v0
.end method
