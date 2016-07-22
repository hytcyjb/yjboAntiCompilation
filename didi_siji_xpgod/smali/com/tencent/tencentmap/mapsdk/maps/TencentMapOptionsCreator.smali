.class public Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptionsCreator;
.super Ljava/lang/Object;
.source "TencentMapOptionsCreator.java"


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "i"

    .prologue
    .line 59
    new-array v0, p1, [Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;

    return-object v0
.end method
