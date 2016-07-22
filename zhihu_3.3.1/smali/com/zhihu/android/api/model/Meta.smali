.class public Lcom/zhihu/android/api/model/Meta;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Meta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Meta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eventsCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "events_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/zhihu/android/api/model/Meta$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Meta$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Meta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Meta;->eventsCount:J

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Meta;->eventsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    return-void
.end method
