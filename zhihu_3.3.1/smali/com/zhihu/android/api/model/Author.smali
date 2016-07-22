.class public Lcom/zhihu/android/api/model/Author;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Author.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/Author;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROLE_TYPE_ANCESTOR:Ljava/lang/String; = "ancestor"

.field public static final ROLE_TYPE_AUTHOR:Ljava/lang/String; = "author"

.field public static final ROLE_TYPE_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field public member:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member"
    .end annotation
.end field

.field public role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "role"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/zhihu/android/api/model/Author$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Author$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/Author;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isAncestor()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhihu/android/api/model/Author;->role:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "ancestor"

    iget-object v1, p0, Lcom/zhihu/android/api/model/Author;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorRole()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhihu/android/api/model/Author;->role:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "author"

    iget-object v1, p0, Lcom/zhihu/android/api/model/Author;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhihu/android/api/model/Author;->role:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/zhihu/android/api/model/Author;->member:Lcom/zhihu/android/api/model/People;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    return-void
.end method
