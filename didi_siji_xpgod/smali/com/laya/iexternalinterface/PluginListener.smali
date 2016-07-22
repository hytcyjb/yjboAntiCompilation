.class public Lcom/laya/iexternalinterface/PluginListener;
.super Ljava/lang/Object;
.source "PluginListener.java"

# interfaces
.implements Lcom/laya/iexternalinterface/IPluginListener;


# instance fields
.field private mMainActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "_activity"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/laya/iexternalinterface/PluginListener;->mMainActivity:Landroid/app/Activity;

    .line 11
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laya/iexternalinterface/PluginListener;->mMainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/laya/iexternalinterface/PluginListener;->mMainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laya/iexternalinterface/PluginListener;->mMainActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
