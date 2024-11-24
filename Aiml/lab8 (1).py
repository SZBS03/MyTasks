import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter

# Define the Rosenbrock function
def objective_function(x, y):
    return (1 - x)**2 + 100 * (y - x**2)**2

class ParticleSwarmOptimizer:
    def __init__(self):
        # PSO parameters
        self.num_particles = 30
        self.max_iter = 100
        self.w = 0.5      # inertia weight
        self.c1 = 1.5     # cognitive weight
        self.c2 = 1.5     # social weight
        
        # Bounds for the search space
        self.x_min, self.x_max = -5, 5
        self.y_min, self.y_max = -5, 5
        
        # Initialize particle positions and velocities
        self.particles_pos = np.random.uniform(
            [self.x_min, self.y_min], 
            [self.x_max, self.y_max], 
            (self.num_particles, 2)
        )
        self.particles_vel = np.random.uniform(-1, 1, (self.num_particles, 2))
        
        # Initialize personal and global bests
        self.personal_best_pos = self.particles_pos.copy()
        self.personal_best_val = np.array([
            objective_function(x, y) for x, y in self.particles_pos
        ])
        self.global_best_pos = self.personal_best_pos[
            np.argmin(self.personal_best_val)
        ]
        self.global_best_val = np.min(self.personal_best_val)
        
        # Setup visualization
        self.setup_visualization()
        
    def setup_visualization(self):
        self.fig = plt.figure(figsize=(10, 8))
        self.ax = self.fig.add_subplot(111)
        
        # Create mesh for contour plot
        x = np.linspace(self.x_min, self.x_max, 100)
        y = np.linspace(self.y_min, self.y_max, 100)
        X, Y = np.meshgrid(x, y)
        Z = objective_function(X, Y)
        
        # Plot the objective function surface and store the mappable
        contour = self.ax.contourf(X, Y, Z, 50, cmap='viridis', alpha=0.6)
        self.scatter = self.ax.scatter(
            self.particles_pos[:, 0], 
            self.particles_pos[:, 1], 
            c='red', 
            s=50,
            alpha=0.8
        )
        
        # Add colorbar using the stored contour mappable
        plt.colorbar(contour, label='Objective Function Value')
        self.ax.set_xlabel('X')
        self.ax.set_ylabel('Y')
        
    def update(self, frame):
        # Update velocities and positions
        r1, r2 = np.random.rand(2)
        
        # Vectorized velocity update
        self.particles_vel = (
            self.w * self.particles_vel +
            self.c1 * r1 * (self.personal_best_pos - self.particles_pos) +
            self.c2 * r2 * (self.global_best_pos - self.particles_pos)
        )
        
        # Update positions
        self.particles_pos += self.particles_vel
        
        # Ensure particles stay within bounds
        self.particles_pos = np.clip(
            self.particles_pos,
            [self.x_min, self.y_min],
            [self.x_max, self.y_max]
        )
        
        # Evaluate objective function for all particles
        current_vals = np.array([
            objective_function(x, y) for x, y in self.particles_pos
        ])
        
        # Update personal bests
        mask = current_vals < self.personal_best_val
        self.personal_best_val[mask] = current_vals[mask]
        self.personal_best_pos[mask] = self.particles_pos[mask]
        
        # Update global best
        min_val_idx = np.argmin(self.personal_best_val)
        self.global_best_pos = self.personal_best_pos[min_val_idx]
        self.global_best_val = self.personal_best_val[min_val_idx]
        
        # Update visualization
        self.scatter.set_offsets(self.particles_pos)
        self.ax.set_title(
            f'Iteration {frame+1}, Global Best: {self.global_best_val:.3f}'
        )
        return self.scatter,
    
    def run(self):
        ani = FuncAnimation(
            self.fig,
            self.update,
            frames=self.max_iter,
            interval=50,
            blit=True
        )
        # Save the animation as a GIF
        ani.save("pso_animation.gif", writer=PillowWriter(fps=20))
        print("Animation saved as 'pso_animation.gif'")

def main():
    optimizer = ParticleSwarmOptimizer()
    optimizer.run()

if __name__ == "__main__":
    main()

