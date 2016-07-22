.class final Lcom/alibaba/fastjson/asm/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lcom/alibaba/fastjson/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method constructor <init>(ILcom/alibaba/fastjson/asm/Item;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 105
    iget v0, p2, Lcom/alibaba/fastjson/asm/Item;->type:I

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->type:I

    .line 106
    iget v0, p2, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    .line 107
    iget-wide v0, p2, Lcom/alibaba/fastjson/asm/Item;->longVal:J

    iput-wide v0, p0, Lcom/alibaba/fastjson/asm/Item;->longVal:J

    .line 108
    iget-object v0, p2, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/alibaba/fastjson/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Item;->strVal3:Ljava/lang/String;

    .line 111
    iget v0, p2, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    .line 112
    return-void
.end method


# virtual methods
.method isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget v2, p0, Lcom/alibaba/fastjson/asm/Item;->type:I

    packed-switch v2, :pswitch_data_0

    .line 183
    :pswitch_0
    iget-object v2, p1, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alibaba/fastjson/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 169
    :pswitch_1
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_2
    iget-wide v2, p1, Lcom/alibaba/fastjson/asm/Item;->longVal:J

    iget-wide v4, p0, Lcom/alibaba/fastjson/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 176
    :pswitch_3
    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 178
    :pswitch_4
    iget-object v2, p1, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 183
    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method set(I)V
    .locals 2
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->type:I

    .line 152
    iput p1, p0, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    .line 153
    const v0, 0x7fffffff

    iget v1, p0, Lcom/alibaba/fastjson/asm/Item;->type:I

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    .line 154
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    .line 123
    iput p1, p0, Lcom/alibaba/fastjson/asm/Item;->type:I

    .line 124
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Item;->strVal1:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/Item;->strVal2:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/alibaba/fastjson/asm/Item;->strVal3:Ljava/lang/String;

    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    .line 143
    :goto_0
    return-void

    .line 132
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    goto :goto_0

    .line 135
    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
