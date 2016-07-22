.class Lcom/didi/frame/realtime/BottomBar$5;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/realtime/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/BottomBar;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$5;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$5;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #calls: Lcom/didi/frame/realtime/BottomBar;->showVoiceText()V
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$800(Lcom/didi/frame/realtime/BottomBar;)V

    .line 267
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
