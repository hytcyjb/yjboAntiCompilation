.class Lcom/didi/common/ui/fragment/SetupFragment$5;
.super Ljava/lang/Object;
.source "SetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$5;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$5;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #calls: Lcom/didi/common/ui/fragment/SetupFragment;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$900(Lcom/didi/common/ui/fragment/SetupFragment;)V

    .line 415
    return-void
.end method
