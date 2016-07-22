.class public Lcom/didi/common/model/Order;
.super Lcom/didi/common/model/BaseObject;
.source "Order.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/didi/common/model/Order;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x55f4d10e6a278afL


# instance fields
.field public __x_voice:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field public appTime:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public bookTime:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public fcotype:I

.field public from:Ljava/lang/String;

.field public fromAddress:Ljava/lang/String;

.field public fromlat:Ljava/lang/String;

.field public fromlng:Ljava/lang/String;

.field public fuid:Ljava/lang/String;

.field public input:I

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public mRank:I

.field public oid:Ljava/lang/String;

.field private startAddress:Lcom/didi/common/model/Address;

.field public tcotype:I

.field public time:J

.field public tip:I

.field public tlat:Ljava/lang/String;

.field public tlng:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field private toLocation:Lcom/didi/common/model/Address;

.field public token:Ljava/lang/String;

.field public tolat:Ljava/lang/String;

.field public tolng:Ljava/lang/String;

.field public tuid:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;

.field public voicetime:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/didi/common/model/Order$1;

    invoke-direct {v0}, Lcom/didi/common/model/Order$1;-><init>()V

    sput-object v0, Lcom/didi/common/model/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->token:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/didi/common/model/Order;->type:I

    .line 23
    iput v1, p0, Lcom/didi/common/model/Order;->input:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->lat:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->lng:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tlat:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tlng:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->oid:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->bookTime:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->appTime:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->area:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/didi/common/model/Order;->mRank:I

    .line 65
    iput v2, p0, Lcom/didi/common/model/Order;->fcotype:I

    .line 67
    iput v2, p0, Lcom/didi/common/model/Order;->tcotype:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fuid:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tuid:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->uid:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->extraInfo:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->address:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromAddress:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->token:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/didi/common/model/Order;->type:I

    .line 23
    iput v1, p0, Lcom/didi/common/model/Order;->input:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->lat:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->lng:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tlat:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tlng:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->oid:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->bookTime:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->appTime:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->area:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/didi/common/model/Order;->mRank:I

    .line 65
    iput v2, p0, Lcom/didi/common/model/Order;->fcotype:I

    .line 67
    iput v2, p0, Lcom/didi/common/model/Order;->tcotype:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fuid:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->tuid:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->uid:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->extraInfo:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->address:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromAddress:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->oid:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromAddress:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->extraInfo:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/model/Order;->time:J

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/Order;->tip:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/Order;->type:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/didi/common/model/Order$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/common/model/Order;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/didi/common/model/Order;->clone()Lcom/didi/common/model/Order;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/didi/common/model/Order;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, obj:Lcom/didi/common/model/Order;
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    .end local v0           #obj:Lcom/didi/common/model/Order;
    check-cast v0, Lcom/didi/common/model/Order;

    .line 259
    .restart local v0       #obj:Lcom/didi/common/model/Order;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/didi/common/model/Order;->clone()Lcom/didi/common/model/Order;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/common/model/Order;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    if-nez v1, :cond_1

    .line 123
    const-string v0, ""

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndAddressTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    if-nez v1, :cond_1

    .line 180
    const-string v0, ""

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/didi/common/model/Order;->lat:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatFromDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatToDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLngDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/common/model/Order;->lng:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->lng:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLngFromDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLngToDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from lat : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lng : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to lat : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to lng : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    if-nez v1, :cond_1

    .line 114
    const-string v0, ""

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartAddressTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    if-nez v1, :cond_1

    .line 105
    const-string v0, ""

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToLocation()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getVoiceFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/didi/common/model/Order;->__x_voice:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/didi/common/model/Order;->__x_voice:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getstartAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public isCreatedByVoice()Ljava/io/File;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 195
    const-string v0, "oid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->oid:Ljava/lang/String;

    .line 196
    const-string v0, "from"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    .line 197
    const-string v0, "to"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    .line 198
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/model/Order;->time:J

    .line 199
    const-string v0, "tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/Order;->tip:I

    .line 200
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/Order;->type:I

    .line 201
    const-string v0, "flng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    .line 202
    const-string v0, "flat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    .line 203
    const-string v0, "tlng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    .line 204
    const-string v0, "tlat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    .line 205
    const-string v0, "area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/common/model/Order;->address:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setEndAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "toLocation"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    .line 132
    return-void
.end method

.method public setStartAddress(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "startAddress"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order [token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Order;->toLocation:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/common/model/Order;->oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/didi/common/model/Order;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/didi/common/model/Order;->to:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/didi/common/model/Order;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-wide v0, p0, Lcom/didi/common/model/Order;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget v0, p0, Lcom/didi/common/model/Order;->tip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/didi/common/model/Order;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/didi/common/model/Order;->fromlat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/didi/common/model/Order;->tolat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/didi/common/model/Order;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return-void
.end method
