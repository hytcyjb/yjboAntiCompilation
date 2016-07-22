.class Lcom/didi/common/ui/fragment/ShareFragment$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$1;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 186
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 187
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$1;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$000(Lcom/didi/common/ui/fragment/ShareFragment;)V

    .line 188
    return-void
.end method
