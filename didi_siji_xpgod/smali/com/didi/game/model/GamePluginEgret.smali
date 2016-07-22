.class public Lcom/didi/game/model/GamePluginEgret;
.super Ljava/lang/Object;
.source "GamePluginEgret.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/game/model/GamePluginEgret$Library;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x258e5781a24d4cdbL


# instance fields
.field public librarys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/game/model/GamePluginEgret$Library;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/game/model/GamePluginEgret;->librarys:Ljava/util/HashMap;

    .line 68
    return-void
.end method


# virtual methods
.method public getLibrarys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/game/model/GamePluginEgret$Library;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/game/model/GamePluginEgret;->librarys:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/model/GamePluginEgret;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/game/model/GamePluginEgret;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getZipUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/game/model/GamePluginEgret;->zipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setLibrarys(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/game/model/GamePluginEgret$Library;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, librarys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/didi/game/model/GamePluginEgret$Library;>;"
    iput-object p1, p0, Lcom/didi/game/model/GamePluginEgret;->librarys:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "pname"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/game/model/GamePluginEgret;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/game/model/GamePluginEgret;->version:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setZipUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "zipUrl"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/didi/game/model/GamePluginEgret;->zipUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GamePluginEgret [version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginEgret;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginEgret;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zipUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginEgret;->zipUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", librarys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/GamePluginEgret;->librarys:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
