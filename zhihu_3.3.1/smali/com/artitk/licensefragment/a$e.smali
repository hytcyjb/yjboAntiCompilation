.class public final Lcom/artitk/licensefragment/a$e;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artitk/licensefragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final LicenseFragment:[I = null

.field public static final LicenseFragment_lfLicenseBackgroundColor:I = 0x4

.field public static final LicenseFragment_lfLicenseChain:I = 0x1

.field public static final LicenseFragment_lfLicenseID:I = 0x0

.field public static final LicenseFragment_lfLicenseTextColor:I = 0x5

.field public static final LicenseFragment_lfTitleBackgroundColor:I = 0x2

.field public static final LicenseFragment_lfTitleTextColor:I = 0x3

.field public static final RecyclerView:[I = null

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x3

.field public static final RecyclerView_spanCount:I = 0x2

.field public static final RecyclerView_stackFromEnd:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artitk/licensefragment/a$e;->LicenseFragment:[I

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/artitk/licensefragment/a$e;->RecyclerView:[I

    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0xdft 0x1t 0x1t 0x7ft
        0xe0t 0x1t 0x1t 0x7ft
        0xe1t 0x1t 0x1t 0x7ft
        0xe2t 0x1t 0x1t 0x7ft
        0xe3t 0x1t 0x1t 0x7ft
        0xe4t 0x1t 0x1t 0x7ft
    .end array-data

    .line 76
    :array_1
    .array-data 0x4
        0xc4t 0x0t 0x1t 0x1t
        0x2et 0x2t 0x1t 0x7ft
        0x2ft 0x2t 0x1t 0x7ft
        0x30t 0x2t 0x1t 0x7ft
        0x31t 0x2t 0x1t 0x7ft
    .end array-data
.end method
