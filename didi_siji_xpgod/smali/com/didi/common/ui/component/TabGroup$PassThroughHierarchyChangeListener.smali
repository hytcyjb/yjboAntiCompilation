.class Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "TabGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/TabGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/didi/common/ui/component/TabGroup;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/component/TabGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/didi/common/ui/component/TabGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/component/TabGroup;Lcom/didi/common/ui/component/TabGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/didi/common/ui/component/TabGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/didi/common/ui/component/TabGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Lcom/didi/common/ui/component/TabButton;

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 410
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 411
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 412
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 416
    check-cast v1, Lcom/didi/common/ui/component/TabButton;

    iget-object v2, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #getter for: Lcom/didi/common/ui/component/TabGroup;->mChildOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;
    invoke-static {v2}, Lcom/didi/common/ui/component/TabGroup;->access$700(Lcom/didi/common/ui/component/TabGroup;)Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/TabButton;->setOnCheckedChangeListener(Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;)V

    .line 419
    .end local v0           #id:I
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 422
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/didi/common/ui/component/TabGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/didi/common/ui/component/TabButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 430
    check-cast v0, Lcom/didi/common/ui/component/TabButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/TabButton;->setOnCheckedChangeListener(Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 436
    :cond_1
    return-void
.end method
