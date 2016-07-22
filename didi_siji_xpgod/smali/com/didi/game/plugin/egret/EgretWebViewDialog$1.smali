.class Lcom/didi/game/plugin/egret/EgretWebViewDialog$1;
.super Ljava/lang/Object;
.source "EgretWebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/egret/EgretWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/egret/EgretWebViewDialog;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$1;->this$0:Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$1;->this$0:Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    #calls: Lcom/didi/game/plugin/egret/EgretWebViewDialog;->onDialogClose()V
    invoke-static {v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->access$000(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    .line 82
    return-void
.end method
