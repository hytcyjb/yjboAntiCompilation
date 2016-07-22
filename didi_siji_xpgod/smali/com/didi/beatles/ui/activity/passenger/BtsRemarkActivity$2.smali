.class Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$2;
.super Ljava/lang/Object;
.source "BtsRemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputText(Ljava/lang/String;)V

    .line 91
    return-void
.end method
