.class Lcom/didi/game/plugin/egret/module/NestPayImpl$1;
.super Ljava/lang/Object;
.source "NestPayImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/egret/module/NestPayImpl;->pay(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

.field final synthetic val$payUrlFinal:Ljava/lang/String;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/egret/module/NestPayImpl;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

    iput-object p2, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->val$payUrlFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

    new-instance v1, Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    iget-object v2, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestPayImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/game/plugin/egret/module/NestPayImpl;->access$100(Lcom/didi/game/plugin/egret/module/NestPayImpl;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->val$proxy:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    #setter for: Lcom/didi/game/plugin/egret/module/NestPayImpl;->mEgretWebView:Lcom/didi/game/plugin/egret/EgretWebViewDialog;
    invoke-static {v0, v1}, Lcom/didi/game/plugin/egret/module/NestPayImpl;->access$002(Lcom/didi/game/plugin/egret/module/NestPayImpl;Lcom/didi/game/plugin/egret/EgretWebViewDialog;)Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    .line 81
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestPayImpl;->mEgretWebView:Lcom/didi/game/plugin/egret/EgretWebViewDialog;
    invoke-static {v0}, Lcom/didi/game/plugin/egret/module/NestPayImpl;->access$000(Lcom/didi/game/plugin/egret/module/NestPayImpl;)Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->val$payUrlFinal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->initWithUrl(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestPayImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestPayImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestPayImpl;->mEgretWebView:Lcom/didi/game/plugin/egret/EgretWebViewDialog;
    invoke-static {v0}, Lcom/didi/game/plugin/egret/module/NestPayImpl;->access$000(Lcom/didi/game/plugin/egret/module/NestPayImpl;)Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->showDialog()V

    .line 83
    return-void
.end method
