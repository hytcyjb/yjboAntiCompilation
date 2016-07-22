.class public Lcom/zhihu/android/api/model/BestAnswerer;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "BestAnswerer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/BestAnswerer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public answerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_count"
    .end annotation
.end field

.field public answerList:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field

.field public member:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/zhihu/android/api/model/BestAnswerer$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/BestAnswerer$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/BestAnswerer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 64
    const-class v0, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->member:Lcom/zhihu/android/api/model/People;

    .line 65
    sget-object v0, Lcom/zhihu/android/api/model/Answer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->answerList:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->answerCount:J

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->member:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-object v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->answerList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    iget-wide v0, p0, Lcom/zhihu/android/api/model/BestAnswerer;->answerCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    return-void
.end method
