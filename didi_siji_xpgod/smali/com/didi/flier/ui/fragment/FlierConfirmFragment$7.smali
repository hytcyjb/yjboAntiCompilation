.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$7;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$7;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$7;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->back()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$800(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    .line 415
    return-void
.end method
