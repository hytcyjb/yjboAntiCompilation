.class Lcom/didi/common/ui/userinfo/BottomListMenu$2;
.super Ljava/lang/Object;
.source "BottomListMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/BottomListMenu;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/BottomListMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$2;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$2;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$2;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    #getter for: Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenuListener:Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->access$000(Lcom/didi/common/ui/userinfo/BottomListMenu;)Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$2;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    #getter for: Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenuListener:Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->access$000(Lcom/didi/common/ui/userinfo/BottomListMenu;)Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;

    move-result-object v1

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu$2;->this$0:Lcom/didi/common/ui/userinfo/BottomListMenu;

    #getter for: Lcom/didi/common/ui/userinfo/BottomListMenu;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->access$100(Lcom/didi/common/ui/userinfo/BottomListMenu;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p3, v0}, Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;->onItemSelected(ILjava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
