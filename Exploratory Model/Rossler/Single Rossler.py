import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

def rossler(t, xyz, a, b, c):
    x, y, z = xyz
    dxdt = -y - z
    dydt = x + a*y
    dzdt = b + z*(x - c)
    return [dxdt, dydt, dzdt]


a = 0.2
b = 0.2
c = 5.7
x0 = 0.1
y0 = 0.1
z0 = 0.1


t_span = (0, 1000)
t_eval = np.linspace(*t_span, 100000)


sol = solve_ivp(rossler, t_span, [x0, y0, z0], args=(a, b, c), t_eval=t_eval)


x, y, z = sol.y


fig = plt.figure(1)
ax = fig.add_subplot(111, projection='3d')
ax.plot(x, y, z, lw=0.5)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Rössler Attractor')
plt.show()



sampling_rate = 100
fft_output = np.fft.fft(x)
N_fft = len(fft_output)
#print(N_fft)
n = np.arange(N_fft)
T = N_fft/sampling_rate
freq = n/T


'''plt.figure(figsize = (8,4))
plt.plot(freq, (np.abs(fft_output)/np.linalg.norm(np.abs(fft_output))))
plt.xlim(0,100)
#plt.ylim(0,1)
plt.title('FFT',fontsize="8")
plt.xlabel('frequency',fontsize="8")
plt.ylabel('FFT',fontsize="8")
plt.xticks(fontsize="8")
plt.yticks(fontsize = '8')
plt.grid()
plt.show()'''


psa=np.square(np.abs(fft_output))/(N_fft*N_fft)
plt.figure(figsize = (4,2))
plt.plot(freq,psa)
plt.xlim(0,0.5)
plt.title('PSA',fontsize="8")
plt.xlabel('frequency',fontsize="8")
plt.ylabel('PSA',fontsize="8")
plt.xticks(fontsize="8")
plt.yticks(fontsize = '8')
plt.grid()
plt.show()
