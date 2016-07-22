.class public Lcom/didi/frame/controlpanel/OperationArea;
.super Lcom/didi/common/base/BaseLayout;
.source "OperationArea.java"


# instance fields
.field private b:I

.field private carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

.field private carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

.field private changed:Z

.field private l:I

.field private priceOperator:Lcom/didi/frame/price/PriceOperator;

.field private r:I

.field private remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

.field private t:I

.field private waitOperator:Lcom/didi/frame/wait/WaitOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->r:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->r:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->r:I

    iput v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->registerListeners()V

    .line 140
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->registerListeners()V

    .line 141
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->registerListeners()V

    .line 142
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->registerListeners()V

    .line 143
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->registerListeners()V

    .line 144
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v0

    .line 106
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/didi/frame/controlpanel/pin/PinBaseView;

    .line 108
    .local v2, v:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    instance-of v3, v2, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->show()V

    .line 110
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->reset()V

    .line 114
    :goto_1
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->reset()V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->invisible()V

    goto :goto_1

    .line 116
    .end local v2           #v:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->unregisterListeners()V

    .line 148
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->unregisterListeners()V

    .line 149
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->unregisterListeners()V

    .line 150
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->unregisterListeners()V

    .line 151
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->unregisterListeners()V

    .line 152
    return-void
.end method

.method public doLayout()V
    .locals 20

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 195
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v7

    .line 163
    .local v7, childCount:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v16, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/frame/controlpanel/pin/TriggerPinView;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 167
    .local v17, v:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v17

    .line 169
    check-cast v2, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearAnimation()V

    .line 165
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 176
    .end local v17           #v:Landroid/view/View;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 177
    .local v8, count:I
    const-string v2, "OperationArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout list count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v8}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getSplitWidth(I)I

    move-result v15

    .line 181
    .local v15, splitWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v19

    .line 182
    .local v19, windowWidth:I
    invoke-static {}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getSize()I

    move-result v11

    .line 184
    .local v11, itemWidth:I
    mul-int v2, v8, v11

    sub-int v2, v19, v2

    add-int/lit8 v3, v8, -0x1

    mul-int/2addr v3, v15

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x2

    .line 185
    .local v14, originalMarginLeft:I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/didi/frame/controlpanel/pin/PinBaseView;

    .line 187
    .local v18, view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    add-int v2, v11, v15

    mul-int/2addr v2, v9

    add-int v13, v14, v2

    .line 188
    .local v13, marginLeft:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    invoke-virtual/range {v18 .. v18}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getWidth()I

    move-result v3

    add-int/2addr v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v2, v3, v4}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->layout(IIII)V

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 191
    .end local v13           #marginLeft:I
    .end local v18           #view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_4
    invoke-static {}, Lcom/didi/frame/controlpanel/Operator;->getOperators()Ljava/util/ArrayList;

    move-result-object v12

    .line 192
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/frame/controlpanel/Operator;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/controlpanel/Operator;

    .line 193
    .local v1, operator:Lcom/didi/frame/controlpanel/Operator;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/didi/frame/controlpanel/OperationArea;->changed:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/didi/frame/controlpanel/OperationArea;->r:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    invoke-virtual/range {v1 .. v6}, Lcom/didi/frame/controlpanel/Operator;->layout(ZIIII)V

    goto :goto_2
.end method

.method public getCarModelOperator()Lcom/didi/frame/carmodel/CarModelOperator;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    return-object v0
.end method

.method public getCarPoolOperator()Lcom/didi/frame/carpool/CarPoolOperator;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    return-object v0
.end method

.method public getPriceOperator()Lcom/didi/frame/price/PriceOperator;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    return-object v0
.end method

.method public getRemarkOperator()Lcom/didi/frame/remark/RemarkOperator;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    return-object v0
.end method

.method public getWaitOperator()Lcom/didi/frame/wait/WaitOperator;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    return-object v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 57
    new-instance v0, Lcom/didi/frame/price/PriceOperator;

    invoke-direct {v0}, Lcom/didi/frame/price/PriceOperator;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    .line 58
    new-instance v0, Lcom/didi/frame/wait/WaitOperator;

    invoke-direct {v0}, Lcom/didi/frame/wait/WaitOperator;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    .line 59
    new-instance v0, Lcom/didi/frame/remark/RemarkOperator;

    invoke-direct {v0}, Lcom/didi/frame/remark/RemarkOperator;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    .line 60
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-direct {v0}, Lcom/didi/frame/carmodel/CarModelOperator;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    .line 61
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-direct {v0}, Lcom/didi/frame/carpool/CarPoolOperator;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    .line 63
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    invoke-virtual {v0, p0}, Lcom/didi/frame/price/PriceOperator;->setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V

    .line 64
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    invoke-virtual {v0, p0}, Lcom/didi/frame/wait/WaitOperator;->setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V

    .line 65
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    invoke-virtual {v0, p0}, Lcom/didi/frame/remark/RemarkOperator;->setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V

    .line 66
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator;->setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V

    .line 67
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-virtual {v0, p0}, Lcom/didi/frame/carpool/CarPoolOperator;->setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V

    .line 69
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carPoolOperator:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->init()V

    .line 70
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->priceOperator:Lcom/didi/frame/price/PriceOperator;

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->init()V

    .line 71
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->waitOperator:Lcom/didi/frame/wait/WaitOperator;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->init()V

    .line 72
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->carModelOperator:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->init()V

    .line 73
    iget-object v0, p0, Lcom/didi/frame/controlpanel/OperationArea;->remarkOperator:Lcom/didi/frame/remark/RemarkOperator;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->init()V

    .line 74
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Lcom/didi/common/base/BaseLayout;->onLayout(ZIIII)V

    .line 79
    iput-boolean p1, p0, Lcom/didi/frame/controlpanel/OperationArea;->changed:Z

    .line 80
    iput p2, p0, Lcom/didi/frame/controlpanel/OperationArea;->l:I

    .line 81
    iput p3, p0, Lcom/didi/frame/controlpanel/OperationArea;->t:I

    .line 82
    iput p4, p0, Lcom/didi/frame/controlpanel/OperationArea;->r:I

    .line 83
    iput p5, p0, Lcom/didi/frame/controlpanel/OperationArea;->b:I

    .line 84
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 85
    const-string v0, "OperationArea"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->requestLayout()V

    .line 157
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v0

    .line 91
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/didi/frame/controlpanel/pin/PinBaseView;

    .line 93
    .local v2, v:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    instance-of v3, v2, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->show()V

    .line 99
    :goto_1
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->reset()V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    instance-of v3, v2, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->hide()V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->invisible()V

    goto :goto_1

    .line 101
    .end local v2           #v:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_2
    return-void
.end method
