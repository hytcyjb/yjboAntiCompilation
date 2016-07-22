.class Landroid/support/v7/preference/e$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/e;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/e;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v7/preference/e$1;->a:Landroid/support/v7/preference/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/preference/e$1;->a:Landroid/support/v7/preference/e;

    invoke-static {v0}, Landroid/support/v7/preference/e;->a(Landroid/support/v7/preference/e;)V

    .line 73
    return-void
.end method
