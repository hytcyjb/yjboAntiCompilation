.class public Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
.super Ljava/lang/Object;
.source "DDriveCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public color:I

.field public label:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->label:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->value:Ljava/lang/String;

    .line 69
    return-void
.end method
