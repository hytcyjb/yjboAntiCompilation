.class public Lcom/didi/common/database/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# static fields
.field public static final INVITED:I = 0x1


# instance fields
.field private contactName:Ljava/lang/String;

.field private contactNumber:Ljava/lang/String;

.field private inviteState:I

.field private mPhotoRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private photoId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/didi/common/database/Contact;->photoId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 65
    instance-of v1, p1, Lcom/didi/common/database/Contact;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/didi/common/database/Contact;

    .line 67
    .local v0, info:Lcom/didi/common/database/Contact;
    iget-object v1, p0, Lcom/didi/common/database/Contact;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/didi/common/database/Contact;->inviteState:I

    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->getInvitedState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 69
    .end local v0           #info:Lcom/didi/common/database/Contact;
    :goto_0
    return v1

    .line 67
    .restart local v0       #info:Lcom/didi/common/database/Contact;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    .end local v0           #info:Lcom/didi/common/database/Contact;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/common/database/Contact;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/common/database/Contact;->contactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedState()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/didi/common/database/Contact;->inviteState:I

    return v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 78
    iget-wide v0, p0, Lcom/didi/common/database/Contact;->photoId:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v0, v9

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v4

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/didi/common/database/Contact;->mPhotoRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/didi/common/database/Contact;->mPhotoRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 82
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    move-object v4, v7

    .line 83
    goto :goto_0

    .line 85
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "data15"

    aput-object v0, v2, v11

    .line 86
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v9, p0, Lcom/didi/common/database/Contact;->photoId:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 88
    .local v6, avatarBytes:[B
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/DidiApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 96
    if-eqz v6, :cond_0

    .line 98
    array-length v0, v6

    invoke-static {v6, v11, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 99
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/didi/common/config/Configuration;->AVATAR_RADIUS:I

    invoke-static {v7, v0, v12}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 100
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/common/database/Contact;->mPhotoRef:Ljava/lang/ref/SoftReference;

    move-object v4, v7

    .line 101
    goto :goto_0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/didi/common/database/Contact;->photoId:J

    return-wide v0
.end method

.method public isInvited()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p0, Lcom/didi/common/database/Contact;->inviteState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/didi/common/database/Contact;->contactName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/didi/common/database/Contact;->contactNumber:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setInvited()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/common/database/Contact;->inviteState:I

    .line 49
    return-void
.end method

.method public setPhotoId(J)V
    .locals 0
    .parameter "photoId"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/didi/common/database/Contact;->photoId:J

    .line 61
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 40
    iput p1, p0, Lcom/didi/common/database/Contact;->inviteState:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactInfo [contactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/database/Contact;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/database/Contact;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/database/Contact;->photoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inviteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/database/Contact;->inviteState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
