.class Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "TabGroup.java"

# interfaces
.implements Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/TabGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/TabGroup;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/component/TabGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/component/TabGroup;Lcom/didi/common/ui/component/TabGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;-><init>(Lcom/didi/common/ui/component/TabGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/didi/common/ui/component/TabButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #getter for: Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/TabGroup;->access$300(Lcom/didi/common/ui/component/TabGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    const/4 v2, 0x1

    #setter for: Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Lcom/didi/common/ui/component/TabGroup;->access$302(Lcom/didi/common/ui/component/TabGroup;Z)Z

    .line 379
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #getter for: Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I
    invoke-static {v1}, Lcom/didi/common/ui/component/TabGroup;->access$400(Lcom/didi/common/ui/component/TabGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 380
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    iget-object v2, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #getter for: Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I
    invoke-static {v2}, Lcom/didi/common/ui/component/TabGroup;->access$400(Lcom/didi/common/ui/component/TabGroup;)I

    move-result v2

    #calls: Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Lcom/didi/common/ui/component/TabGroup;->access$500(Lcom/didi/common/ui/component/TabGroup;IZ)V

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #setter for: Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Lcom/didi/common/ui/component/TabGroup;->access$302(Lcom/didi/common/ui/component/TabGroup;Z)Z

    .line 386
    if-eqz p2, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/didi/common/ui/component/TabButton;->getId()I

    move-result v0

    .line 388
    .local v0, id:I
    iget-object v1, p0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;->this$0:Lcom/didi/common/ui/component/TabGroup;

    #calls: Lcom/didi/common/ui/component/TabGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Lcom/didi/common/ui/component/TabGroup;->access$600(Lcom/didi/common/ui/component/TabGroup;I)V

    goto :goto_0
.end method
