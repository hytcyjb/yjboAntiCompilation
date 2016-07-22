.class public Lcom/zhihu/android/api/model/Paging;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Paging.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Paging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public afterId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "after_id"
    .end annotation
.end field

.field public beforeId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "before_id"
    .end annotation
.end field

.field public isEnd:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_end"
    .end annotation
.end field

.field public limit:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "limit"
    .end annotation
.end field

.field private mNext:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "next"
    .end annotation
.end field

.field private mPrevious:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "previous"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/zhihu/android/api/model/Paging$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Paging$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Paging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 136
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Paging;->beforeId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Paging;->afterId:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/Paging;->limit:Ljava/lang/String;

    .line 145
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/api/client/http/GenericUrl;->getAll(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    return-object v0
.end method

.method public getNextAfterId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    const-string v1, "after_id"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextLimit()I
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    const-string v1, "limit"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextOffset()J
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    const-string v1, "offset"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 86
    :goto_0
    return-wide v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPrevious()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousBeforeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    const-string v1, "before_id"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousLimit()I
    .locals 2

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    const-string v1, "limit"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviousOffset()J
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    const-string v1, "offset"

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/api/model/Paging;->getValueFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 76
    :goto_0
    return-wide v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mPrevious:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->mNext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->beforeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->afterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/zhihu/android/api/model/Paging;->limit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
