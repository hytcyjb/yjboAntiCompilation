.class public Lcom/didi/game/model/GamePluginLaya;
.super Ljava/lang/Object;
.source "GamePluginLaya.java"


# static fields
.field private static final serialVersionUID:J = 0x258e5781a24d4cd8L


# instance fields
.field public fileList:Ljava/lang/String;

.field public initjar:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public reflectClass:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->fileList:Ljava/lang/String;

    return-object v0
.end method

.method public getInitjar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->initjar:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->reflectClass:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getZipUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/game/model/GamePluginLaya;->zipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFileList(Ljava/lang/String;)V
    .locals 0
    .parameter "fileList"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->fileList:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setInitjar(Ljava/lang/String;)V
    .locals 0
    .parameter "initjar"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->initjar:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "pname"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setReflectClass(Ljava/lang/String;)V
    .locals 0
    .parameter "reflectClass"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->reflectClass:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->version:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setZipUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "zipUrl"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/game/model/GamePluginLaya;->zipUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GamePluginLaya [version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zipUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->zipUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->fileList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initjar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->initjar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reflectClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginLaya;->reflectClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
