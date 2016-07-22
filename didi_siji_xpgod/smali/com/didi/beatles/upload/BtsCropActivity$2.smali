.class Lcom/didi/beatles/upload/BtsCropActivity$2;
.super Ljava/lang/Object;
.source "BtsCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsCropActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsCropActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsCropActivity$2;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 77
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity$2;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V

    .line 79
    :cond_0
    return-void
.end method
