.class Lcom/didi/common/ui/fragment/SlideFragment$3;
.super Ljava/lang/Object;
.source "SlideFragment.java"

# interfaces
.implements Lcom/didi/async/task/AsyncListenrInter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SlideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SlideFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SlideFragment$3;->this$0:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SlideFragment$3;->this$0:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/SlideFragment;->doInBack()V

    .line 183
    return-void
.end method

.method public doOnCancel()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public doOnPost()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public doOnPre()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public doOnProcess()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
