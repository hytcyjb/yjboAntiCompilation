.class public final Lcom/davemorrissey/labs/subscaleview/c$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final SubsamplingScaleImageView:[I = null

.field public static final SubsamplingScaleImageView_assetName:I = 0x1

.field public static final SubsamplingScaleImageView_panEnabled:I = 0x2

.field public static final SubsamplingScaleImageView_quickScaleEnabled:I = 0x4

.field public static final SubsamplingScaleImageView_src:I = 0x0

.field public static final SubsamplingScaleImageView_tileBackgroundColor:I = 0x5

.field public static final SubsamplingScaleImageView_zoomEnabled:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/c$a;->SubsamplingScaleImageView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x54t 0x2t 0x1t 0x7ft
        0x55t 0x2t 0x1t 0x7ft
        0x56t 0x2t 0x1t 0x7ft
        0x57t 0x2t 0x1t 0x7ft
        0x58t 0x2t 0x1t 0x7ft
        0x59t 0x2t 0x1t 0x7ft
    .end array-data
.end method
