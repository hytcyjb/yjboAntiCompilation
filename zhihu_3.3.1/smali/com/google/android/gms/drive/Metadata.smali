.class public abstract Lcom/google/android/gms/drive/Metadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_AVAILABLE_LOCALLY:I = 0x1

.field public static final CONTENT_NOT_AVAILABLE_LOCALLY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public getAlternateLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PN:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentAvailability()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kh;->Qz:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kf;->Qt:Lcom/google/android/gms/internal/kf$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PP:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PM:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getEmbedLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PQ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PR:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/kd;->PS:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kf;->Qu:Lcom/google/android/gms/internal/kf$b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qd:Lcom/google/android/gms/internal/kd$c;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedByMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kf;->Qw:Lcom/google/android/gms/internal/kf$c;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kf;->Qv:Lcom/google/android/gms/internal/kf$d;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qe:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaBytesUsed()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qj:Lcom/google/android/gms/internal/kd$e;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedWithMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kf;->Qx:Lcom/google/android/gms/internal/kf$e;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qm:Lcom/google/android/gms/internal/kd$g;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebContentLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qp:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PX:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isFolder()Z
    .locals 2

    const-string v0, "application/vnd.google-apps.folder"

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInAppFolder()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PV:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isPinnable()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kh;->QA:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PY:Lcom/google/android/gms/internal/kd$b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->PZ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qa:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isStarred()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qk:Lcom/google/android/gms/internal/kd$f;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isTrashed()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qn:Lcom/google/android/gms/internal/kd$h;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewed()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->Qc:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
