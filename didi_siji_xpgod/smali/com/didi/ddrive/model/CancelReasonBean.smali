.class public Lcom/didi/ddrive/model/CancelReasonBean;
.super Lcom/didi/common/model/BaseObject;
.source "CancelReasonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_INPUT:I = 0x3

.field public static final ACTION_NONE:I = 0x1

.field private static final serialVersionUID:J = -0xb9bd4c4dff4f3d3L


# instance fields
.field public reasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method
