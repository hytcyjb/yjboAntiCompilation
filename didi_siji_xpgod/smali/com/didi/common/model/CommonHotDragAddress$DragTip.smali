.class public final Lcom/didi/common/model/CommonHotDragAddress$DragTip;
.super Ljava/lang/Object;
.source "CommonHotDragAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/model/CommonHotDragAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragTip"
.end annotation


# instance fields
.field public isOut:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->isOut:Z

    return-void
.end method
