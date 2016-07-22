.class Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;
.super Ljava/lang/Object;
.source "PopupHelper.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/PopupHelper;


# direct methods
.method private constructor <init>(Lcom/didi/common/helper/PopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/helper/PopupHelper;Lcom/didi/common/helper/PopupHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;-><init>(Lcom/didi/common/helper/PopupHelper;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 430
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 434
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 423
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$700()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->oldPosition:I
    invoke-static {v1}, Lcom/didi/common/helper/PopupHelper;->access$600(Lcom/didi/common/helper/PopupHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 424
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$700()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 425
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;->this$0:Lcom/didi/common/helper/PopupHelper;

    #setter for: Lcom/didi/common/helper/PopupHelper;->oldPosition:I
    invoke-static {v0, p1}, Lcom/didi/common/helper/PopupHelper;->access$602(Lcom/didi/common/helper/PopupHelper;I)I

    .line 426
    return-void
.end method
