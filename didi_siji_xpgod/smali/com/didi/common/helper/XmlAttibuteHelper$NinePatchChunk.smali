.class final Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;
.super Ljava/lang/Object;
.source "XmlAttibuteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/XmlAttibuteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NinePatchChunk"
.end annotation


# instance fields
.field public chunk:[B

.field public padding:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/helper/XmlAttibuteHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;-><init>()V

    return-void
.end method
