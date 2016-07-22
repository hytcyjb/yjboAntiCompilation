.class Lcom/didi/common/ui/remark/RemarkActivity$2;
.super Ljava/lang/Object;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/remark/RemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/remark/RemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/remark/RemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/common/ui/remark/RemarkActivity$2;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity$2;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v0}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputText(Ljava/lang/String;)V

    .line 101
    return-void
.end method
