.class Lcom/didi/game/plugin/egret/EgretWebViewDialog$5;
.super Ljava/lang/Object;
.source "EgretWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/egret/EgretWebViewDialog;->payDone(Ljava/lang/String;)V
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
    .line 203
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$5;->this$0:Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$5;->this$0:Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    invoke-virtual {v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->close()V

    .line 207
    return-void
.end method
